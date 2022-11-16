Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C46CC7F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D24DC433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668583254;
	bh=I/p08gomxa7wYwuW2z8t/M6YCtrTqUiuQfuzLdx7btM=;
	h=To:Subject:From:Date:From;
	b=Y4MJa7QgwzL5WGMU5z2+asF4JP/HrS0C5N4z4LOqjXU/aG5+40Ov44spjmhd0nXFu
	 DcFRWN3YYWmu8I+zmMFam3vMVjFWhSp9sIxVAoQMSHwYpF3TfIS34qbJbxepFqZ5oP
	 sk5ew8cB+c2S5VMcf+athxHnTtjM180AB1q8ND7kzKzla5+GmbALwzEtCVAumCzbYI
	 0EQBE9oDLFQLXFlSSVMj9CNShTGcGKMtKIGU8ZLS8PDc8EzzFH9J/IJKDP1f0nQxK5
	 PI0rMge/s1ZRMsHZuQanqEehINjlkhZi8i1FP3Q+IQZ0c6dWjL22lUbtZLAue3Y5P+
	 ZwvWAOB1AX/lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561AEC4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166858325433.27486.6496617614136263882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59d0462919dfc2c93fcee475dd85fe3c2b5c82f9a184a2783f78b1c803f4c014
Date: Wed, 16 Nov 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668583254
