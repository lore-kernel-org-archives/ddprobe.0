Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0B61FBC
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 10:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656759412;
	h=To:Subject:From:Message-Id:Date;
	bh=UyvvYrPhgktByCvtyj0Pn31n6bJeByH0S7QYl3brYtc=;
	b=bjybnO3A86+cbjEJ2Msf9t9Ch/d1uJmzRam4/aKMsdOwkvN3GixCF0kdjWceu1Ar
	mdBzHSXKKoA8D2A/mzL3eotAcXZhF9Kez4cpoW/SfUEgqa0cdk1O0NVDm8S08wrS/GV
	muYbAwOGPHcfzmBHBZPiI1l3n2IaVnDzSf1BoPoQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656759412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UyvvYrPhgktByCvtyj0Pn31n6bJeByH0S7QYl3brYtc=;
	b=V71dNnW1uBQONv02zueXXR2kpdoQhg8KAwFy9OdCjwpyVpH1SdeDbIZjEk0Jbjqm
	8S6vz8J8mfbQl5trtoVVdeieG0MEHTcRf3hNL/0s+dj8xnAiaQNQxQ2hvd6CE3UGOoq
	BTXlyNLngf6L6Kq1IOVxEnDBQD5GeeJp8QV/75XI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181be8e663a-41d04f83-6207-4473-af7b-bd155a738d1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d657312af5cf37ed4ab0a11dae0bce653ba44ed45b63bc0f0aeb0410f68d0cbc
Date: Sat, 2 Jul 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656759412
