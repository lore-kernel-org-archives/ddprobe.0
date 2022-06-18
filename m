Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245067B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 21:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655588339;
	h=To:Subject:From:Message-Id:Date;
	bh=qIRkDcd+fJ2C1ArOFulqrjLqLzPNYrjZNCJruP07XjY=;
	b=ZvI3wuRYvtzT07zD+SaYeJViXpHyOk2tbW4BXj+bAE+joKmjsRZhhSp6HKXquRAy
	S3mGv5ZXSlkmJhOLXe9mtKanLZl9Xi5tLTGRXUhbLTJPk7WENeB9ps9rao/jBdHjDp7
	n7+AO7s4YRodhklQ7Ixq4WtL6mAvu2ocRSgNcQ18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655588339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qIRkDcd+fJ2C1ArOFulqrjLqLzPNYrjZNCJruP07XjY=;
	b=IE16TypP2uD3nmzS0q1/m9K/CU4NbWTojtxKcXZ7YA22rUhoPUAVWFNJEcJx66oY
	ueeAdv3d9bXFxC1Gg+DCMEF3N1BBW62emgcRBHu9XTAf/Hdfd5touh3xgEhM8ZkQpBO
	y9rNsn5p6K8ZXjA4X16PB7Z0VNZ+mM06yonVIkcI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018178c13e11-3e37bf51-1a6b-4c02-b0d9-254d2fc43fa6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccb741c46792473e9cff76ec0e654e9288233af8d73697b96074a9c1a3f7cea4
Date: Sat, 18 Jun 2022 21:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655588339
