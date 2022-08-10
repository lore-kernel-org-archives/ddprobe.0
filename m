Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D26C17D3
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660156852;
	h=To:Subject:From:Message-Id:Date;
	bh=11zNoxnhVEMTOXk5pXZD+317qGKlp5PhJSYEcL5nBKo=;
	b=M85NMB+OFt8vWk1fEkTDu5MtaFUY2En+stiZeYmiFpHa4GUA4YuWOPYNy5T6ovSs
	QMP3Fmps3oP7kza2l9H1iCct1A6/03WCUGKcs+8a1SHsu7F+kJQvf2oIulTlkF3d9qZ
	zYwkTc85wKPJM98rGheMxMU9r9kPpCA6a11p5jSc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660156852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=11zNoxnhVEMTOXk5pXZD+317qGKlp5PhJSYEcL5nBKo=;
	b=bmPXrxfZCcs2NC2USKrC5YvZQyd/3JCwAiRLJWTAPmfAWNBJ9n92z9dVxVYXg3gl
	vZrm5fjfhiwgacjfDc9zj6YgsPCwhiRScBAM3ZZnq/qIfJfeLpR+FEy/2zY8zMK/Pxj
	W+tQg8k4rq7/aeMgkQ2Y58cS/itpyzf0jRwqXbMo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182890f396f-9252cad7-cfce-453c-8b91-ea1dbe803f46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3829504892fc4ebba586164199f8d980e136af813837199b5e319db60a2a39a8
Date: Wed, 10 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660156852
