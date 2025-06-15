Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D581BC3F
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749977394; cv=none; b=ldOmcwBWlrivNTKUeV3LipwLbdqQRreLCA4GqNZcmX5FT1LUpEDYtEZVPzNAI7I/dVQLouIlmqq4asnvjY4AyBpzNofo46LvcacN0dXFLkLWToWf6w0/FhvJ2I4LLbaqMUW621My0Q2eWAHZZo1OTG1Acif9sCNs4IXCqeTxMc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749977394; c=relaxed/simple;
	bh=YIlgYrnUnTqHqDUYwz4PVX0Q6guxxXw8vDsCjr5meNE=;
	h=To:Subject:From:Message-Id:Date; b=VxNr/ZbrvD2V2m/g30cGhmol7Pp5esELaEuq+F3pyL1oZLw7jvaYUEePIJd7ycQqVwY3IJ2Lp7GOTNjvgHqiqkBDRNQuonGtHZiNDG2pxTtKNHZePW86OlLTMx8yQGXvr62p4dT+ZIGqBIyW0FZpK9gu1PvzMIO9pFtV6MmFQHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2RGb0Oi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2RGb0Oi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB49C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749977393;
	bh=YIlgYrnUnTqHqDUYwz4PVX0Q6guxxXw8vDsCjr5meNE=;
	h=To:Subject:From:Date:From;
	b=H2RGb0OiuwGb89w0nn0ITucCJ8DK0Y94SWyyoLK+a0puN8oJdZBSyM6dUPeUBMLQ6
	 QEkdNcthAPz90yRN05JVlbAihgV///fzFmjPVu5S9MCjvXs7fhH7R9PhLumn3XKFar
	 dae0q+WQTwHu20QzZ7614jI2Bgwge2LDQeIRIJ3gDxiDODraXwyTIo6JuVXFpIZvX1
	 DYqpBUiCtzBeg8KZ8O4738FqFj+A32MVjWcAAw1I0KtKLYWtKKdBqE7/pBNH5DZlcF
	 MrBS5XdQU3brBJn8bsz87pgNOvxYgFn2KoHt0cpW2ZpyOzIsKI0+9as4r2bRLBcFmi
	 ozE3UjbTuj+bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BEDC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174997739360.4645.4522305213193497887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba428222896f20739bdf0bb8429c0eccf69deaeb494be0907c8bbea05fe95f1
Date: Sun, 15 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749977393
