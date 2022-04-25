Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F6929AA
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 19:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650915418;
	h=To:Subject:From:Message-Id:Date;
	bh=9VOJ73RYn/PXnvurVqZ9rEJW7NpdjUsqjKmwGTt+PQo=;
	b=jaISLTwK9cXP6wSrwz3BjfiwNI4ibQ8lR4A2P4MqWw2yQvOMstYRfp/foORr6rcD
	t/58JvVKEoHAWgCDntJjhdwTL8yNBLbJOLEBcRjK3FcEiNSYjrx3cD4+TtCKf5UVOTr
	PvL9XtDV8bQAUwCbNjELIKh8NmJgBxYl5srb7GT4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650915418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9VOJ73RYn/PXnvurVqZ9rEJW7NpdjUsqjKmwGTt+PQo=;
	b=MNWsasrqeULAICjbCI/yXZhMB2qOd6a1JKN/v85i6ELSatBNuR7XvC+A+h96zoOw
	S0GOcqCm5KKlHOMJl8EOasoBWpECoACltOdLXZk7UGBBjJN2s5urDTjU7YXUVoM29p3
	KKde+eCL/fsk4K6QflMzhmKi+Mg4/uxs6wOpgaos=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180623a20d1-c2f0d578-6364-4167-b534-64b99fad1242-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9471f6685717dfeca8530b87f873bf739fd869aee55a67021428fa7f859dbb50
Date: Mon, 25 Apr 2022 19:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650915418
