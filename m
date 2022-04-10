Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B2A137A
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 17:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649610958;
	h=To:Subject:From:Message-Id:Date;
	bh=YwfW9XuZWRzVr+k+f8nfjRTgAm/8xD70qnk6RhFZu5M=;
	b=Zig6Eday511LqiAebhUlzJs5XJdYPO1mSaaAn+1wUFfIoqPbC1oBvPsjLP6inVvC
	NqA6REtxLpb22eh7vN8+JvOW/+P+v0PElbNrxMUEbbnAMeYYFpXjRe/hYBf4UHwMXMo
	spoa+scAjTe6z0A4RBegteB2z6Joon79VkNCd6Yk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649610958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YwfW9XuZWRzVr+k+f8nfjRTgAm/8xD70qnk6RhFZu5M=;
	b=Mmr8yW3KMJioVdGiBi0zsPVnCoVV026QDxO9z98XTwtjXDcKzxb8HeOAVCALiQ6o
	d90nSxmnHeFwiKLD6rTshJMTNaIfROwhm+Ysfo3kemw4AEe4PBrAMrvPKlAabxLB2f2
	q0vwFkeyHOIz/gsTQrxDj6ELnzBk05k8tnks6H8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801479a5f3-21b140b8-b37d-45c1-b8d0-ea5accaf46f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f5e85fd1e3028e17277aef4316c9b4f6d7a7f39672a3d1e1c1ac8858ddfd5a3
Date: Sun, 10 Apr 2022 17:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649610958
