Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5959A3DD536
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 17:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780334074; cv=none; b=WWkeqZX9qzcRW0/O+OZvT0yvu9/+RtY3gI0Qxkr8w9yuAh4kY17Si5GhsPzF+TXHzUWDvsx2+BmKv/MQCAWi/H9xNpl0RzJmogiEG3EIUJoqnjKnVhQQZztA/d4vHG0TrA3+RjEc0e7QJfJQ5GyaB98jlVg2x7EjphV9gshLoqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780334074; c=relaxed/simple;
	bh=Z2un5JSWVVlW4tGNR+dSkT4Tsly7q3S1Vum43wpavYo=;
	h=To:Subject:From:Message-Id:Date; b=cpANgeM+41vwDHG5YEuD0JuGULFLLkj5RfSdJwHeyw0PYq/4l/nhoEk2jBnLccxl8XV7VXY5gImzKRec0kZ1I2vRRJts9V7/z9c6wjSNNNBCCxSiwovuv8wEWbemJO1cnu+i5kV4pMj4oaEiRyGsM+B8oYlXiwguP2fbZuGq7Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wfh9ZOHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wfh9ZOHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 002CEC2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 17:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780334074;
	bh=Z2un5JSWVVlW4tGNR+dSkT4Tsly7q3S1Vum43wpavYo=;
	h=To:Subject:From:Date:From;
	b=Wfh9ZOHviYc4KqjyGOvBdtD1lx+ntuYih1/JTHFWhBQyNsNx7dxCrARRLd2R78z9G
	 EdwW6nnAL40IDI6/VqFfrJjiBlMBlI6ldpQeEG2eYPvPsQSpiHteOrcGx83WuDGQ30
	 aZJwn1y5BQxcSqTSDuJ6GextlAxn7X+DcBQafSAoZ0I2wXoKDtf+a/wPMhAJ1V+lfH
	 KXSK6Q8yIN440YpGbLUNcwx82OdpgITHa80RsuOQkjw90yjHhdHqrbFaYHU4UPaSWu
	 Ry7IEiQILdiZWlJ/AmiX6MsTIpm4Jkjxv89n90NL0uKSXizZWXT6uzQ9iafUnDMQML
	 QzMjA72aoB3TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4EE7CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 17:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178033407381.18800.7941937523995682589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e678478515c51ef2d5ccf2254c1ba077c05b72f577a6ed1589dec1860c5e52c
Date: Mon, 01 Jun 2026 17:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780334073
