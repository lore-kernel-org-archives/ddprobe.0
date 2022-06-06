Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC1F28F1
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 16:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654532879;
	h=To:Subject:From:Message-Id:Date;
	bh=gMfUyAN7xpgOEQGUTsPf7X8v9qtPMWsnaAi7Ry6cm60=;
	b=eYtyBnMcarCPtMQfqR5fNBxuLrG9GEe6NSoCfSTmlJURVcoTE2nA/9rQf26BnphF
	HnhoQg7XxRlSstOMZq5zU6AqVXO69wLfD2cBSRLPW9W5/IJEpauRyG1nS3dm+2DnrKv
	Ta/CDTNrkl/pD+jAcR3OnQ26A3hHi2NFkIn7uSuk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654532879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gMfUyAN7xpgOEQGUTsPf7X8v9qtPMWsnaAi7Ry6cm60=;
	b=HEnBPvqm3rfDKj3xv+uotG3rZ5FbYJDl/TdtI8Q7iGp0vLAeX0chQ6unGiT4i8hC
	/V7mZR0Oa1edUQXRKyxCLFvb5R27GJNWxfGLqfj9cEwJQLdG3pXXcVlP4lYkmjCno+a
	oZ4S2BJ1tUfonPEfTl+8bF7IDDHjgg0MS3uGqODw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018139d833b7-7dc3eeb8-e3d6-4af8-949e-20d54ed3de7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e87b2bc829cdc61df02d359b547fe77cf4d1fba8ccf543a574a9cb6ee43f878
Date: Mon, 6 Jun 2022 16:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654532879
