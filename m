Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436D978F40
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747714794; cv=none; b=ILGbp3baDKQ3kfpUOBVl4VgE63WT0QpqVAK+H1ytvWK8kngCanhAsXgZvdwLKK68DK3JVAhm7dFyoJcSxP9yacCYGISD8GPgVXJjzbdIA14SB8JUL+x6LrQjlSmRIzqsVal6TqGWyTB51jQ9VebNxk1IqOWzVEh/D/AGIAjedKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747714794; c=relaxed/simple;
	bh=xljtxWoWXVUxgFOQwbFUs4WqUNH4jTV2H5CAGtZQ5Rc=;
	h=To:Subject:From:Message-Id:Date; b=PktzyMkwg+fHKZjwuDPGzy7BxSTciE/o9bZIXEHeu9/zRMmES4POONhs0EZI9q30u6Qc9MolqQqs0Cm/881T90HRTwK5wdHK0OepMi5mHMfKfja28vM5Fwd6+eJO0ya5acDjZett0rCMCP63rO2NrA4Z4DXx30rB3qzH3b6Nn/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3hwNuJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3hwNuJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCE8C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747714793;
	bh=xljtxWoWXVUxgFOQwbFUs4WqUNH4jTV2H5CAGtZQ5Rc=;
	h=To:Subject:From:Date:From;
	b=W3hwNuJvmAV2MZvhxaDTStwc//KEShBPpN9yXDFdipBnhyG2kjpga3LoCbqNpIQPF
	 FvuzUmKhVOQCqarn/dMoQu3X8ubSG1FrBvIE0bO8apKnSWOhNzJ5Ilp5J+PryldCEf
	 o0D+xfv7h1kShG7zpizka/ZTfmFefDEXrQ2huG61AwmokHCUOeT/Ix7N424wJPzyYD
	 wSE67Wg+bSgt5UfomqSkxIKztTdz1nRG5/i9lPTK3GPfB5CyDHonHty4JDoseEKYxr
	 KJ7cLE8scM50NViSxVg6aviS/fTbiTYnQxi67NC90+U841R5NtOegD3kHyUIc6+CTN
	 KXwrnpehZI1LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97660C54756
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174771479359.11019.5463241818368662637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8932e61f423046d72471edafe93001af606531ee4980056ccfa32007cd269647
Date: Tue, 20 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747714793
