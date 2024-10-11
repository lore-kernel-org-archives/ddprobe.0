Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AB920A5D9
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728633954; cv=none; b=BJqT/q/QUPWA9P+j9p3tipeSTBde6/mQeJOVYpgrTnhfodGyBBYYAZ48sEEQ6caADw0wUy/909WyV7lAx+LAlxrMwZV7yzM6n6bpm+hNAoE1vnPJM8CF5esiVUIo69hk2AGFCGWNJSmPkLNTf7iJXw63Nd/i3PptvUm0xOrBuLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728633954; c=relaxed/simple;
	bh=+PQ+L8lsHRFkcNrrGC5TftdTNAWXT6/BSuZctZd1rC0=;
	h=To:Subject:From:Message-Id:Date; b=n7VA2yRDtrKEN97XZ/7iEa9yB0ApadwAPQaZULBlN8zxkrIFeNydc+VYE0TjihZ8gtoMV6893TN39+rme1jKl8wScyCnlsGaj9Hrv51HTRuHRc2KEeKrFm+OPy+RIY2qQK2fPsknwn9chNHoQUKjhi1wv8Qp8Sta5KRzTXSiG6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/fr+w0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/fr+w0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCF0C4CECC
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728633953;
	bh=+PQ+L8lsHRFkcNrrGC5TftdTNAWXT6/BSuZctZd1rC0=;
	h=To:Subject:From:Date:From;
	b=X/fr+w0drYcGb7K8OhUoOP3aAyeq/yuSLmA8x6sK8GnNsr4tXYOy56BHw3ayc7gsJ
	 9IAZiuAvBQe6ai9z/b1/CaHXk83CyYMVYWM+vShzf0Xm2my5nZmXPJpaDfqZzGzClV
	 vDKixSd9VYarN175asFh7LTJ+G4a7PkToCay/6zWjWR65Ot7/sLn3OhE9d5NqvPDHr
	 A6LWbcUMzaNE95I7JMjaOoc4Hm2iWLJKshsK0exzj093GBYoA45ZdV8Zbibr/MRyxl
	 WOHSKksfWnW4Ix4o4BQ5SbN727lInYg0Ee8XlMtKKCuKz9r7ybGwJSWF08jgAKw2js
	 OWs7KlSagM0xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EF2CFC611
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172863395361.16216.14957205649568427306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eba870db8aab301d6efaae979dfac29d54c2e3c15fa33d637fb72742d8711676
Date: Fri, 11 Oct 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728633953
