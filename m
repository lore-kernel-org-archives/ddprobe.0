Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EDCA40DFD5
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777202254; cv=none; b=YIIqr6NNWvjSpRiSKRa7QbnBIGlKZqF6pPVoTlEpb3xgqr5doGPgzxvuRKUYpYr8v73nyJ+LI0vDTlUYWHTWGsBxVq2mDh787yUei+s88i4XQMTHFYorYCiZDSt8hf8wCpdqce1ftag/y9WLgqTmoG/rYIWAfGsWx5UJUtVT5TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777202254; c=relaxed/simple;
	bh=9jBgLdyTha3Q5aMjDIDo9leJS/A02XjIxabhxWhGel0=;
	h=To:Subject:From:Message-Id:Date; b=X8JkxFace7EqPa55HiGcDFpKno7+YbGmKc9Z63Mh8EkjCxCiMJHsiaMgPsfkV2Ov3W9mOjaM6WGqT4YbeZpzR04nxoXoWvf3wcSXQJZshtkVI2Qm5vxABZtwPWMXWPB+Floq9Xz2SdELJwJsjVd92JTena7VTFwkkHMMRcOMP+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2w8zxtE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2w8zxtE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD303C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777202253;
	bh=9jBgLdyTha3Q5aMjDIDo9leJS/A02XjIxabhxWhGel0=;
	h=To:Subject:From:Date:From;
	b=g2w8zxtEFF9pSRqCATt2qGtkh7Erao4/55hz8PCkjJvpvpn8VR9WtMVAmnZLaEEhG
	 Ul0oS/yRPS6raOtXiSSgsWflzyn7cR2YsCDARGA0kxQ5Xn2viHIp9KCj/7FkzWEn86
	 6d0Jc994MgeGZ8st/7H17KnwqAzCKaGFQ7gWkK9nZi9zTYBjtaLXgIfcFWGdrWV3yU
	 VdkSfHIKXI81ekjC5nwYAWpxpvsqaF2zJfvy6WLc8EQFtI7NZFJSvF8syGEWFHgzfZ
	 QfXPr8jb4oxBCzyRFKicXKEQsS5w0OpomW9zt84yIkTs/oU8nCDz8TK4B/oDUuT481
	 ZpYlSvacA7uVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC181FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177720225368.23074.129097822089056719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b75164468b20fa038f214e3e3e787a53d8b25f56a407ab2ad26a47db24228f
Date: Sun, 26 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777202253
