Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A36923AB87
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764569574; cv=none; b=t33uD1q/YyVhF1arlOf2MoMilg93lVPHKG7vI5GCmCKNQmMFZwReoF6N1eFNmm+8GQ7616eMY4girI3cLNgS+9SBusTl6HeWDYok9ET+9MdNfEz/VMS+KjTiA/+VawcGp9sjrtRF4elPj3bZopBDJpWdZcOVEmqU3sWUHKgsOpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764569574; c=relaxed/simple;
	bh=JK0VhhH8xd+W1Fk1X0bgiQWiqwcMuY35+FjQOvfwkKE=;
	h=To:Subject:From:Message-Id:Date; b=kp1e1d3qtUa4tsEXJlwTLm/1h5QFceLEmaC/7tsuU4qVQKEDS/D59noRubS1H7PPgXpK/F0dmI2jbMvSMF/Hwe/THR9B1oAXtqZEJ/UOpkLfT3e/Kk+ikEt1o7gxvHkJidgdKlXlKNkbqrzIhCX+HeREGZD4Iwo/HyiJ0Y7TuJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9vbVeXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9vbVeXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85F1C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764569573;
	bh=JK0VhhH8xd+W1Fk1X0bgiQWiqwcMuY35+FjQOvfwkKE=;
	h=To:Subject:From:Date:From;
	b=I9vbVeXQ4BhQNvp3UKaJDlHcLW7N03v8h703KlMXnRYmGgTXFCTJdxtQb8hFQXncC
	 O9xr8QwycLq++Lnv4x8jeJTLNjk45iHJLI1X3cGrEE7FGih6XdOUnDGi9YONJAT0Iw
	 575Jo+V/6KaBXa/PCOQrK2Zm1SDLQ/eI4EO1RNLIeaHrrlG4AYiOsScMh583Dk2VH+
	 KTwnlY7GlY/q3OrF9ck4RrdHwiXzzW15XBx/ufn+ESSAg//61HGfUOVDGmIq9J/kF+
	 E4T6jbsV9wJWyBVlkyD6ePdjXGZPQOSBVXC0QgI37BewcYUgJl+XU729R3mE9ggR9W
	 VukLKJ8DoYQ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9315CD111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176456957359.31926.14958859402731221750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 619183c284482cfaae1fe1450e01606d840988607c16792da1d49492bdcaf5b9
Date: Mon, 01 Dec 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764569573
