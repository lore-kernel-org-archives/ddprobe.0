Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470941B1510
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727270754; cv=none; b=j/xQyklhHnQQ7Yr/dWciZFHxktY5jQ9XKXg+6kYcTAkt+Nz0zgkAeHBmwCRfLqoUc6JNpT3Z0+DzjFsfybAMob+Qn0chIbF1DjP0oerBOqzLJt9gNCXSMbFzEjOF9O6DfBbbfZXyL6TLqeJyFs3rMxQLMzWTBJ97t489w/FSW90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727270754; c=relaxed/simple;
	bh=2SNS0HBnsHIim+CJntOuEs+aOTPYhPZICfC1lJScMDU=;
	h=To:Subject:From:Message-Id:Date; b=QQdkx/x+L+7eYZo0gs2gRYoxSIAub+uKlv2Aq/+Up9eWzIB+05QuKowHfW+dE/vbSqG12LWLj1hOIMtbMAe7yrVTV/z5CwmylfLZLHVAtG62JqkkLpfWmL5oPNF/jXjXqqSmkk0/gg/2In+RfU1Jy2vJUFffeImv8YkXvhO9rws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+qSxI3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+qSxI3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A812DC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727270753;
	bh=2SNS0HBnsHIim+CJntOuEs+aOTPYhPZICfC1lJScMDU=;
	h=To:Subject:From:Date:From;
	b=r+qSxI3bhRNkz8emAGO0jcVCu/elUSCUcEwyEp+QZoNNOPYnNyyqDFRUT7yqRVp3f
	 pvdDZgrrImNtdYvHsUdYranKhINOXorwlvq2DVgj/BA5q4rj2eXkZ6vbw5n4CBW7Vr
	 pn8Lpm0qtZEO4p5xiskvf6mfIkNh9PUrCklspZSECIcIlwourQrfbr6aUqBd7waQjE
	 iQmytUKrT9LJvAeREvRuUbUU1pfqGC6ycbTJZ6xrulETnin9da4dlKVXT6Pduit4iE
	 k2/oW1eWBYSDym5alIAm9SLwKIfrmG52bG/UEAQVv1WRPQCsUqHOXgVhzF4LnE2Zgg
	 WwcRw5paJwZGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981B1CF58C3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172727075361.20590.6406737350507103310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c39bab2c37ef8761db274b7bc83137feda00c401d8ee0245f54852a43977714c
Date: Wed, 25 Sep 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727270753
