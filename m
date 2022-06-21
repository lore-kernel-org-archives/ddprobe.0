Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3A67F5
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 01:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655773439;
	h=To:Subject:From:Message-Id:Date;
	bh=Mr2P59rQ8DQZvieIk7Ysr7qJeBZiJnir0tAb8cSOH0o=;
	b=VR+QmIQWaTcJYa4Ybo+QHcjivE3Ekmsx524Hzyz/Ei0bYcGAU5PSldbZcfeuI+Ho
	IaxbWnE9LuR6ZZglF+u6TKMxg3tb/SktuwQtjdnkA0lRb8OZtOUUMAmsLFsgi0aO+lD
	KUr5YccL45CZuRCRjKOT9LLEm0oNvlwr9wJpLTKE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655773439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mr2P59rQ8DQZvieIk7Ysr7qJeBZiJnir0tAb8cSOH0o=;
	b=gHBI252IOS8udNA2IwIgbL2FhYUTu8I9vjRBI5Jq4IRX5mc4VZxFoVJnt2ito5QO
	kuMnVyFUi1iqomu8tBoC4yBN7yYrT6zgNXUGq1bTC4x7R8U/swB0DZdtJVuEHSpjiME
	zOc8KdFbAObfnSeSoBQFzdjz5rZ+vMWElno4wt6k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018183c9a554-477aee7c-ca04-4b53-ab5a-8c35b6966d7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00d1f4a2f143d0c2a5c9779f043b951cae3907096c4fe1a27266be4327e8f0ac
Date: Tue, 21 Jun 2022 01:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655773439
