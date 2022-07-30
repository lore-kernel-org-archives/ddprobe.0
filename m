Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0C723A5
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659199852;
	h=To:Subject:From:Message-Id:Date;
	bh=gUFYj103ewsVmK2IB9qY7N+JiOwAff4LJ9n5w9GGp54=;
	b=fSaQMbdxdet+pSbyKM5wIj5cQUJIeDihVmWyleSzDDz5NNR001BdADHCnbUBPuf2
	fHL7t08WMl3ELpFszkqG2Qpg5v8b9Jc8v18c7spif96T9+vVpufb9BLIW2Im3sLky+R
	/6ZZUOvnGuJqR0wlBnY1B6eP4S8iTJjSBYIKTpFA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659199852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gUFYj103ewsVmK2IB9qY7N+JiOwAff4LJ9n5w9GGp54=;
	b=KwBL/QK33AjlHOG73mcYiHHD0UlI7ke75CZ8bMK2AYFemajMbRP5NGeoy1elAF4d
	gj60dpbGzxGo4T4CKai77pe+vCfKMk46RfZSUxdQ4H71w1ecgH2ndNs/VYCtebfo7Q0
	F0SNoYKmYk5n2x7qQslk46CsGvdQ8OBZUrqfsdYg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825004901f-20043310-341d-454e-867b-20429003a946-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d9d9803401db0d3c36bac7e5ced1af4cefe5d20f4d93312cc199275fe3cef4c
Date: Sat, 30 Jul 2022 16:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659199852
