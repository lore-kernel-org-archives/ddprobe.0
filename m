Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FE2627
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 01:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652579879;
	h=To:Subject:From:Message-Id:Date;
	bh=wA6E65wM92Hd4++2h5c1zt/JbkdlkQS1pF6xvJJP1gI=;
	b=agJkHCmkZWFnvf6ubfPW8oj6Xb//OznRfoQUvwlMBkmreGAnSkeEnb/N09TP7nt5
	PG/G8JhpjtzrUZ7MUxgj0mvH+htgbxiEMjZoF4C78BpHJk+91jBcjwucSvg3HEbX/Ro
	1mNOKeo9UBl+S6hVYAirDEmvBSe/KsghxKBjUgBI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652579879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wA6E65wM92Hd4++2h5c1zt/JbkdlkQS1pF6xvJJP1gI=;
	b=S2OMV6eoMWGRpX9cQIbBGUVhD0mOLHmnWckOgEq4XTJOvZdgztEYyK15zDBRkJrt
	MQsJINZjsWMuF7FqNUCs3c14yAwrapuvJuival7TCegGq1A9WR53lToE6osWFpQiY3/
	QzsItDadWOn4eUe0UjoRfSiir3nIvh/YJM+97ykg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c56fc9b1-9b16e8c3-075c-458c-a9ce-2f47717d169d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8dbf3c8d73d9aa29253dd209e3d38f43c1ad219cbd37faa7f2b6917864723b54
Date: Sun, 15 May 2022 01:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652579879
