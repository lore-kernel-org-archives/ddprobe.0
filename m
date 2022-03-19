Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132D57A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 02:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647657685;
	h=To:Subject:From:Message-Id:Date;
	bh=6Nalm4v95xfMJq7ukIzzivnq0pe6bCeKMlWJNq7Abww=;
	b=TREWof+BBqwb2wqu7KuX69sn46xlxvwMpMKIWYukwMK7M2vjeIHU3XGMc8rWj4w4
	6sRohRN0/CQ0YLpK92uIn8F8/4OwTQ/v1G49eAzRbGG90UO9cO4BdKf48nDMMMxIUJZ
	FRh+IIqpON6SaLpYkoGAsOPznn6CaXSDgN19Z70c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647657685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6Nalm4v95xfMJq7ukIzzivnq0pe6bCeKMlWJNq7Abww=;
	b=gfSxIDlomNAb/xsKTyIa5u7UBXMzq2lrzkQ5oL2XuftSmxDc+OncL+iKqciYX/jY
	EtDkZkZwgPXG2AA8zH3D0vE4DBxTSdsl/+bbe0yL3f3MAPH3MatbWKRt1S/gRqzeUWQ
	V9SCXYmAHiPvH2B2e9tH1MCaB5uEFRsmV7O5TuV0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa00d0f1d-6a0e4653-6ddb-44a7-ac72-98c511cecbfb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c31d192562fda073aff3e57d2944b42fe8e873afd7a3a758ebc284ba0b39f16
Date: Sat, 19 Mar 2022 02:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647657684
