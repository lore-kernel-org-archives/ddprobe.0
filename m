Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086D47A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 18:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657305412;
	h=To:Subject:From:Message-Id:Date;
	bh=dfG5ui30MQ+0kfTH/C6A3Mt27Njl9ccui007qJg8NPw=;
	b=i4yE8cQWtPd2x/SAb4ybM4jYK96jAH89R2jXFMdOsUwwgp2jtqet0fNy9crGROWC
	h019Y5ojf22GqFIamTh8lUz5bU5Zr4AZZ+VVsea6INEOMtsdNJ9W2Dcayfg7R4MTIyW
	I/vKWaHfktR7RLH70CWtI1pRF2x6l76WvS1Rw/Eg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657305412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dfG5ui30MQ+0kfTH/C6A3Mt27Njl9ccui007qJg8NPw=;
	b=RaUNYtRs2/ya6fH7wcbxPr7ovZYP76Ygs9/dA8gq7Npflr1iouSlOFWaEbqi1jMV
	qkvk7+zFDXjYk8jNLT2BDs2IkLV6WDQw75EmHvZ0nQAyMMrV0UFrNuDCnF4REWXPF2k
	JkybSUywt56K0Q2VNgQsdBw/SCYAYlBEXI5rETOM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181df19b328-4a089ef0-f0e9-4036-af1a-cbd12542bdb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: feafa4a2e0616bbbb1713e62526a20c076ee84b2a255abe3d12fae34c6298b93
Date: Fri, 8 Jul 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657305412
