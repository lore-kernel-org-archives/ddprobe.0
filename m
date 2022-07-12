Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03ADC4C95
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 19:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657654012;
	h=To:Subject:From:Message-Id:Date;
	bh=G/TOYMm0YA2j3wlefvqvkgZOP51PskFhek2hPDkXtfU=;
	b=Y/0uav0fFkjMHXnCx+VIFpb2p/OHNuO+R8lqAfoA5uE1gNWFribCXbkKoP2z20zd
	ZcbphzhAJo3ZW3Ffn9ZuqJ33n6zIxlzkEa+QyZ1uJmkvyzas8EZzi1CvZYZU9rSPnLu
	zRcAmpf8ePRvTOs9gWH9IXuTSi24axZadFx+cqlQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657654012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G/TOYMm0YA2j3wlefvqvkgZOP51PskFhek2hPDkXtfU=;
	b=UiK5iZNASX6ceyjq5fzK0FpyaLWxknLVpxFGKbCR6UIwFeO1HMnKzIcGUEUEt0iD
	/OAxP3sr9aOqLRf+kRIo/xymJV3vN8OklGa7zUK/cjvUpQL/i0vIdBVcJEcAqM8q8q9
	/FjlOUqVu91K7Jx2AcZjokPux0E/LE7It4Wv2YLE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f3e0e96d-9bad2f2b-4638-4d6e-b898-b2772bfcd67f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5603961c3ae11f736e6574b944ab5ba224926d0799dd1201bcbfe9cd7aacb53a
Date: Tue, 12 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657654012
