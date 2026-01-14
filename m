Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF9A387576
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768383834; cv=none; b=fE6VURhLkfSrT14TqQqzuZMpMQvk+5NUB4n+H/b/WMCHIKVREkRsDBXzRBqL7X9xZurPWrPLCiI9vNgCuGoUMnaS+gVu0soNLIuYGGBnKzxRfPcqRS6J+CurgwPIBPrnH5rJI1dnmPyqpiiUqJdOJPcPjjbEKs/azTc3Y8fstGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768383834; c=relaxed/simple;
	bh=pYou3Tlo9Ut/DlY+Dn7e3MHe/gtpjnapwHXeg58k5Yg=;
	h=To:Subject:From:Message-Id:Date; b=gjvhA8eEx0zhARWS8GbD0fjIvGC21ykLQHd0wqChaBvfhCR+7CIYVxfOnMAlp7eGuCjnnvIBabbOpRN585kPjOEjRDX0FifoRhy3l9wg1nTkyJ1/B2RnT72ro3mxlmMG58w1Juvu0ZYCrv5MTRYpM1jMYOfbIEnHYRRI0mj1jNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SELzwT/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SELzwT/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3CFC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768383833;
	bh=pYou3Tlo9Ut/DlY+Dn7e3MHe/gtpjnapwHXeg58k5Yg=;
	h=To:Subject:From:Date:From;
	b=SELzwT/dNjqxkK7HDBeJGrRNvMlL/BU85HnVD+0iSUYnAO7G0LMrn9sTuOhPYPdKK
	 yejeGYBIV32Lo6yMl2l9Rbn+XZwbQXfw7ufKVUtqZGHO4zDv6YuHbgCFR4nzeXBPvV
	 f7sHImU/GSJgn3yE+k4wNG4+YWMVgqCCEmQ8Bi9fsGp8QTITO6f7DP0Gn+SmfRdE87
	 J+ED20ioVDlPzEqC/X6JvbceEhhvypa9tbnPQsuVGx9xIS667mE7Qqx897mGP+hG2V
	 0ynVZssOMxrlqgW6z/io+dLhy55Q6+9ifUZY4xRNctOAFLJQk48LHlXsN4wSbF7Ka1
	 +k5CqzNZCWIfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F931D31A29
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176838383358.8323.4180573962929169809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d20cdbc71a076ecdca2af8269ba722047ea54178c9f96ce03ec5dacfd78a3e
Date: Wed, 14 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768383833
