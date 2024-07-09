Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E77726AD0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 00:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720486583; cv=none; b=FgJDZQddoQtvYX2Bo5oqhEDXsTNHYBwQMCsaOgJV6b1YZYYkhqfVIVBAsJGf66Z/9zhlY9YuWTxpfsjocRnG1qTUK1y03irdnkvP59al7JxLRA1dtpu7pQ1GRNBGdFG5YwwFHRlfjFQjSjK3PyYX34Vm2I68l5n5DVHUNPpUGGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720486583; c=relaxed/simple;
	bh=dDy8P/N5eLpF3tXFKwvlka1fo2DRpl+ii5xznGmQ1Ug=;
	h=To:Subject:From:Message-Id:Date; b=PYa8CPQPfw6qrOgoKAt9G5MfEjIs3e/nXnkrw1w9pTCbElmfTJcvHC4PvCZY6cdjLlmdg6JVrwbY9hBSzvHRUE3qKAHoxx9f0ZVvcg+wg9ZdezAyqzaWEjE3rATNSk5z1kfTRHxWUU/Hayh/97KXYxQKzQplSDdJzx4UOT157D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDH2CP2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDH2CP2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D705CC4AF0A
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 00:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720486582;
	bh=dDy8P/N5eLpF3tXFKwvlka1fo2DRpl+ii5xznGmQ1Ug=;
	h=To:Subject:From:Date:From;
	b=UDH2CP2u87r+Eeo5Y/aSRZ6c6O4S1lMuSei/4or0jxUeQ5EgUFzWzBpXDfvTuCUgN
	 koIdMMjzJQmb+m9RfGB66gb9eyL6Wz+SFPa+CMEqDh81yglgATjPUV9dfaHepEax4j
	 vbTnNh9qToGy/0dDzNW1ndGLiQOknmdNzRre/zz4vfUQkNh9jQ4RYtAkhp4/QCZKFr
	 gbblFf/J/chpq+9qXL1zDhqLn8HwNoI+Lg6i65e+sx81bpmXqdi2Yozq8Xwt4dPl1C
	 UuR9LROLcZAzFQk7S+qWzyEav9APh35pzxWwg4CYSD4lrUcwTk85+LPpUiRdpxehIt
	 CL6kx+e8Cp7WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C76D1C3DA45
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 00:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172048658280.26742.17055509138901945077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 544bb594ad2735fc302cffbb2aa9bc4dfdad91a32b74991db249506817f0238b
Date: Tue, 09 Jul 2024 00:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720486582
