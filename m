Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1234405
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726659954; cv=none; b=U+2Lydf9zafgpwNWMy8ffhoAQJY/aIFBmfScwCCaOuYwizPoImTsPonDIesn8Vj/lvhOi4FnSc97auHn/ntIgTecADUwL4WQ0wjbnQMjTU1NHCrkdrverDrDov2jdqV3qe+v1QmAu+VnaQhdfz3XrGFEb+CIyDnNqMDjCmZQ1WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726659954; c=relaxed/simple;
	bh=cPKsUSRKB25GjJ16a0uS1Vdn6kScazYuAy65G6Jcy/A=;
	h=To:Subject:From:Message-Id:Date; b=dTUyAvw/Zet2LILHPmsf9NJidRpnujgwpLcqInvjy8M0Yx5DBEGR/y4n8rWR/iCO+4suKLhsiZFCmLy4zPat5AJsgqp9F5F8betJ0b5xJ3Aas2mMh9seNbszI7VT6lYH8ErB2UQxe81FvbG9z7eqDBlQj3w14yu67gvRzNNGNBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufuFx2Og; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufuFx2Og"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAEEC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726659953;
	bh=cPKsUSRKB25GjJ16a0uS1Vdn6kScazYuAy65G6Jcy/A=;
	h=To:Subject:From:Date:From;
	b=ufuFx2OgZbO+SXrnoj76J3e5D8iCve5vsEBesL2kJ1Hn+RFnJxMmFMJDOKqg0ulzk
	 Apw3MUuijEr8CJHATt1QbjTEgC7JApuqlhW4Z9aMZIqJVEmV35JCVX7gKirpG2tA3f
	 TOMn3Fw9fFkEDplUsrnwgnx8Lw0cEz71MzCyr2uImlpSRSoKHu+1dLhvczZnFq71UX
	 DlW7gXtggJgmRk4S1dj3iWDwrznXgapLDE4iZ2AR27TcdFY4m+P8D1ND2Gb/WZ8eW9
	 hAZiTkxZ3tY8NWExNCAUfttLdG38TzvMfRY0hXTcw7iWliAdF6hMeVNerhhNEjph3Z
	 HTcbtIPh2vXvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4ADCCD1A3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172665995362.30613.2005646117524570189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c846e51014f28554cbec890bb4c8b452fdffc5614184360dac03bde9aa17335
Date: Wed, 18 Sep 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726659953
