Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1ECD7C
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 00:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 882DDC433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 00:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661820652;
	bh=+og5xGdFDEil+jGIQezJywBsD2oYhzpaEzCQ72wkNPw=;
	h=To:Subject:From:Date:From;
	b=lmF7cJ8kzQZi+cPlTxKGZAIA1Z6hvb27SeApGqwAtBsGPBOAAl1nsNU8G3KETaZG+
	 Sb69xub/2blezEMNez11vSsTfTlAs9Kfey+EysiYBrRDv94VpL5+fNgLKAh0LG588n
	 6p4kSJ/LRAVkl/iB5dX8XfKzhFDPX5r2EYkC3EkO4VdW9y8L11WBtz01Xky8hEzjwc
	 a2sDcGjy0HxHyRirmhuagkwv+gkevFEGbLQ24lsvxzv7WasDmzW6MFubm2MbxRUWnO
	 ujZj9gj4sfKhv8zQX+8t74SAhcV8d/JSZxaThOVT4EKyK1Jjf4temAF6Wn1FsecD1W
	 YsSMW8vX3ioiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D04FECAAD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 00:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166182065242.5826.5634139045656756454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd06bb2c6dae8ef6ecb381514f53ada79d3d3e4402e2f9fc0993ad42fa146edd
Date: Tue, 30 Aug 2022 00:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661820652
