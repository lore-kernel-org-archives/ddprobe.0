Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC60C26C385
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762717793; cv=none; b=EhJYZMRBPT8UPcknBJ4Qxb4e0zSUoR4fym79blfNhd+YOgSBZmEYoLhdALtsltgzqH70rKQzbWjXi7UwbI7S94UAzOzxj7xQ9oBU++hjrwuY4wH0tG/zcjzZIlAVWoBSG5P/Av42vCTCSXfeFgAm2l2YBfVTc4pQUthVG3/egEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762717793; c=relaxed/simple;
	bh=kdy4CVJJxbkXQy1vStkoByGrxeC4v5Kbwr5MI8khbTk=;
	h=To:Subject:From:Message-Id:Date; b=c4VNs5ECGe6iiUaxlS8mKMdAG44P6lpx7QS22ZZFbKFJBOtOc82v9ZgDWOXewCyOJO6Z0TFs3dyl6y6yUYi16XJ9RJ90cMNardi3vJCBk4P1lX6DY4w7aE9Oxp4LAheOxazsYao81OKrs3RFjnFhWuAKbJNXwFNNVyfzaDKnizc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5d94mSU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5d94mSU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B8D2C116B1
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762717793;
	bh=kdy4CVJJxbkXQy1vStkoByGrxeC4v5Kbwr5MI8khbTk=;
	h=To:Subject:From:Date:From;
	b=h5d94mSUf+/lq22gxLtEB5weW98MujELYDxEgCX6qFzQ8rnS8ES5fY75sqDGSP8WD
	 BQcf0GHtJASHLfBa1HFlA9371E/z5p8guwCeXF9OvOf9NV7Hbc4NKYiiB07C/3+DqI
	 MNXik+iOsWhb6cpjZYmipBaXrmI3B5JhDkJpHwXVRiUvZBkDu/w0Kl7TQT+yERgWYJ
	 YvpKh6cN9DAXZx+j4x908+NsuMdA9CA7luOBiZ4jXrNuOQd0QEHUXeI1OxGcqjSOaj
	 N3MweseSZbdXEHYwawAjwufC3UVrk9weYBtWCWX98iQK5CBUgUteD8LbWLuTfakAM9
	 QJjuO3PXJheNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901C3CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176271779358.17349.15502609104588527806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbeb391741b1d0c915625afc46df922cb5e8abce6dbb59a98c15534ca82efbd4
Date: Sun, 09 Nov 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762717793
