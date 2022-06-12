Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60E47F5
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 09:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655024519;
	h=To:Subject:From:Message-Id:Date;
	bh=GHOcYw4Lp+8h1AlbhdTwhtVcFMYgpKwcRYrIo0hCO6k=;
	b=RvvqPqBSoeeF03CW31Da90S9rmc7ccu51UbzVUDet6Pt1hqKWd9rm0BI2ajjcqL/
	Yew6aUYrmj/M6Vlwoxo6CRPaTt3HkISEVa7sdLF1xQAfYC9c9eE0d5C30QH6hI1dTUk
	Izqq+sM301fLmMCRIzy+NxzZV6+UdR6pJg5KngCc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655024519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GHOcYw4Lp+8h1AlbhdTwhtVcFMYgpKwcRYrIo0hCO6k=;
	b=at1NExVex+AuGVx7Dy/hCZmcRKazvfR7D7gYNgIqa0XBVvP4r2Sl3//nl4csXCgs
	OxHzOMREjJ2Gl2fj4f2FejdN8YAxzaP2slhuVTS7BQv57YB3f/CON56su1SfMHnG5gM
	uyFPhCOTl6rI1oU0wn4oTUeK7PYQfyBdR05N2BSw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018157260868-567e534b-67b9-4f35-99a3-860b7bb72945-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce160f54ef70a736199dbaae8d94898a58dd44bc4c98bc396b7f31ac82613ba3
Date: Sun, 12 Jun 2022 09:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655024519
