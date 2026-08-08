Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B37400E18
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786200634; cv=none; b=pbF75k2Apa+UfyB9aacc4Mbxr7+fiQLmM/gFJa/cDMBets2gKB18M978t+04hKrdhCo7B+4FauShUIviLzasHxh/pwPhQW9vciqTYRqYeXAh+EyIO0+hglwTXCBRirxlBUmhcYXbvLNQhyb2a/eFi7Kn7NvmExSgwWG/CVCcemA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786200634; c=relaxed/simple;
	bh=VYezPvknYBDFGBOq9fHEuircbo4bv33rB2o8AoNrcL4=;
	h=To:Subject:From:Message-Id:Date; b=sOOrEaC+Fhm+qhUUyuRhgt+4b7q2VUGl6wPATZRzqP5Tjcv1gS91nA737utoAk/eoJVQLwKpPfiAxdaPsFEiEbhBi+cmXajcr/UKeiZndL7uC7fcgFTnYj5TGGvG6W88wNnbr9yRfOOFfFfVsL/5eyTC1QCbHbYI0ISD46jfXoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRju+RWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRju+RWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB95C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786200633;
	bh=VYezPvknYBDFGBOq9fHEuircbo4bv33rB2o8AoNrcL4=;
	h=To:Subject:From:Date:From;
	b=tRju+RWYDMIkkt47Unla8KZtPIligtUCAtb1pP3Bw7/67+TtSxn9ZE8hhcLAiqQgD
	 UXXUQYNS1kKKUlc2Wg/DeZ/XMN8jSI2FnrRdqp//3BhLgv1jc8awezLAqNTcnSEhv+
	 7kQ998RSAqBI3eXINv1pGBF0h+bI19WZ9nO2Iy0qFSK7yW4PH8nzTmnLp1InZIVMZe
	 2QUShqtIF5VYzhyYYk6zzMnxDDWdyE/1HQNDDoWfuCfN06voqhY8peBFzmzDtOD3+C
	 qy2MN3/9itIgs+gaHGQpernzvCBcfhrm27ZfyY1DmSPZ5pTivcgaKp3hJ+lgnXIacN
	 4aNv9jTliPDyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B854AC5AD48
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178620063374.15220.11214645777240321451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32fa9b52fceda2b70354a641be0bfe8cf363fc86f3106a92b247f20035b9d010
Date: Sat, 08 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786200633
