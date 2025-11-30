Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72C82139CE
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764472373; cv=none; b=apKqAzZAk5eVHVQAu/jlzgwz+vHqdFn2pq8lOrSo1wxQLxV8d2f7O1/cAhE+KQ9gmB577BF4JkN58BEik8JtTg0WAPKkbob431ot4a5YP8sR4bH1eLuCBR7M2Fj3rfm8Yej5gAlI79nCKVC/Kk8RIjWD0AphePsE/h4HMbtf3VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764472373; c=relaxed/simple;
	bh=ldQVxByF1qupfU6vk65rto7NwfpBHvFe0W2sgCVKyO8=;
	h=To:Subject:From:Message-Id:Date; b=uIeWlgU7gzldOyJF+1Z4RTtmHSEA5vEI5ykTVi7IhtJ559ir3J/Ki2n2/XiHpM6LOxR3xjCAE+JAHATLfLFNSEie8xvCFlE0Ng7y/AZ+fzAkvYl4GLUZvxgPQJh/y7uqaGww5VGhBZQr0ije/MgzU6sbY2usPU6CypRzD5/qN2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDWftkwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDWftkwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA72C113D0
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764472373;
	bh=ldQVxByF1qupfU6vk65rto7NwfpBHvFe0W2sgCVKyO8=;
	h=To:Subject:From:Date:From;
	b=EDWftkwOz4VtlwSHovMnW976sWS/nMel+itTSojzYU1tDvxApV8w+3BqwBTHVsXDz
	 AGjeoSd+2TddIPtVJM+Roq8z1izZ/j5KFQ+oS+hF4X55cmRJWBXzNxYJzj+03CKvML
	 FV2xOa/JzEgLGzLeRbxcvt6CID4uRXwqQMsEeJ8xFhu4mfR/+NxiLYolW5NHU+9oQ7
	 OLXKz9Bon8I6xkqKPnC1IPHIVgyabg419xjcdBnMwEk8rdlgqdkYQZcnMSmGnAGf5j
	 XyPzLLnFGNWmw8RaeXX/gfbdZa1JhGi3SBwWGSGQR5AOeIEcIfSCNmX8NeS0B404wR
	 ICKkJbvuVqgZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980D8CFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176447237359.19982.5533874391097350142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aafeb498fc775f9d73e55ab571c1cd55dafb083eb9498064dfe40350ec00266c
Date: Sun, 30 Nov 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764472373
