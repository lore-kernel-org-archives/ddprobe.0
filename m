Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7396B1368
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660306252;
	h=To:Subject:From:Message-Id:Date;
	bh=U9H5CN4dZpSgbX1TivLsSjYZHGTQ14sIIYxnbh3b92k=;
	b=hLpfO8x45fff4AEJ64vlKjOZxyp40zSs6pKkaXIIHKKn0922OTKnhByyZGC3QyGF
	AEohJmsp5MI+uNzh47zokJ0tpRefzGf7Qy3FEgbPouXu8JbAmFlQ2Ei2nVGKyDWZXQ6
	jb9AAQkdTQiLsGSC/wzqeF0+fNxYdFDvGEgWUkmw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660306252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U9H5CN4dZpSgbX1TivLsSjYZHGTQ14sIIYxnbh3b92k=;
	b=ksWUTWS1bJ+ZIDZM0iS8dvVD9t+2wdCl5wFj83pf7UJyIY4tb/SN+lvY35M5AALi
	k3N6VqQnTvFrJHXGgrHxaMtFbxbWN3zkTuhMjIx0uvq699ckT2xIHBuBATBlPBSZ5Wd
	Emnx8jkhH5elSZ0C07vxd8zl1Ra/1wiyX1xY+Vio=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018291f6e323-ec62765f-9e8b-4533-9f5a-2f37d39f2331-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5b595fcb03b2b05f3b25122a821cda35cf0eba12307c67093691d8fd48f80e3
Date: Fri, 12 Aug 2022 12:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660306252
