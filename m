Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B26189
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758245394; cv=none; b=R+hTj+eNiCjhxZcT7y2svo9Obf7h3ZAc3wUSYIRSHJYIVtGmMzbZl+lQw41S0fLfcZRvgbCJLPMBdAAQUFYct5xukwXn2hEpOy720/DJAf/ueUhhboba7hMZMA3iO50FHTVFHf3WYjX46RII7P+qzdbrIMNhle6WdC415uNM+OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758245394; c=relaxed/simple;
	bh=ZzFEIdCLu+fzt1a0tUJ5YpPY9OoGHcE99Zzg2TnSwaQ=;
	h=To:Subject:From:Message-Id:Date; b=FNI49jlq1JSTqxn1L7k4cyYZkaaNjnvPp+ZlxAyKBrEu1AZbtn7zhve5a4DhPK2m+R6CvfHzQ50RM+rcbWS+/A2AK7vDwfoKKjcW8jzPyTx6BIgAReW7Hc3yvf6HrguM1lD02pI0TVerubHEPCVdWUtqYBKYgEow6BJt6JjYEDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tI/y0lqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tI/y0lqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9972C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758245393;
	bh=ZzFEIdCLu+fzt1a0tUJ5YpPY9OoGHcE99Zzg2TnSwaQ=;
	h=To:Subject:From:Date:From;
	b=tI/y0lqRokQ48TiP42G+mjBNh9b6hfwIbfPV2To0zf6/JAFXDpWoXE7FI6kCt2YYg
	 ets57ttD3Wc0bFK9E+5KYypYlVfEusJGhGsTzodAlrOYFkISE/NSiE1EXDEF/+T+eC
	 1NmHY2K0Z8xsD1m6qDEoywb74Jvo6E3p5BznqwiWgAC+eWgWCB0gcIVh8ATeA69wIn
	 1+DLV+WO5LLl0xnZ+l2g+nLUkDMhOENz6Mv1H/dqeMulnlN0swCfqLLRbftojbSe2F
	 zAX/ORDfM0RX9YRTAmJwzuixAJu05UZskefhVb4XQRyvtvWrT45Sm4XZROQ6VBTFQJ
	 bnj3MwYXI3PjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9ABCAC597
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175824539359.22623.198975584372423422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace85a52e64d4e8280944fa097861f233bd278ed3994be7740b7fa26a1024dac
Date: Fri, 19 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758245393
