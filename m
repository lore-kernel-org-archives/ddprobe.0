Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BCC82112
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661100652;
	h=To:Subject:From:Message-Id:Date;
	bh=Cr1GNuj39HEqYMDF9tFw+gvcdqQDq49e0I9GigNGU1Q=;
	b=Yz8Kc1mcjd2oxildWRJ8EjusQBE4X4dB5yqVCBN6tIO576rFKtqA5TL85ARHLlbT
	OnG0IafnYnSuO7BwGp0oCpfPzAWtNQdBVM5XGNmf2Spd9vaL+/zjX4EVkJa08CObw/N
	vWCTWUowMjNdzmcLH76C2M0DwltV3Anan2dQXPt8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661100652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cr1GNuj39HEqYMDF9tFw+gvcdqQDq49e0I9GigNGU1Q=;
	b=kd7VIO5Jaa0aMm4PeNU5rzbrQWDOK/uqZmvCUXxZzrg0M/w9RiQPka4wceW8KvSc
	Yi31+lPHGjUZg5M5Gaw6PDW8aqX3wRYltPhqHWoz8VGuGtL+J7BHUpuue+QtTxt+Irt
	DpIwSWsAosQdlb7y2lp5fRTw8DeVej2iHHroINYw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c150780b-1fcd4fad-be8c-4c54-8009-3aa66d153d2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1c5e49d2a6f37c36778921c2620fef510e8be60e5dcf9b0daa163a0c881a374
Date: Sun, 21 Aug 2022 16:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661100652
