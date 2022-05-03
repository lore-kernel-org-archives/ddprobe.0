Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162A37F
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 01:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651540918;
	h=To:Subject:From:Message-Id:Date;
	bh=nE9npyuT9nTmEysACSKc6oeMb+e54pSSsgqYKx+wnOE=;
	b=CSYnPnrg6XQI6bMt02Klk72WjNwvsnMS8M6KYe9h9dDrIeFPJxZMe0CCbt7Yqu1f
	+Yeg0OI+thIbbAeZYXa6LbP5aYdCWClZy2NaWPwnTRBgxKqLyYQ0TnG8jVLa4N1McSO
	eoH5wha5NANlDosWgWabvaWqYQQn8YaJp7RH7v2Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651540918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nE9npyuT9nTmEysACSKc6oeMb+e54pSSsgqYKx+wnOE=;
	b=FE9Zswi+FHiQJBybZKKPOO++wjlSA/6d7VaCKzVAfpNow8hsRItfbqyA+2F5SEPK
	UKceBsmjpZH0JJ+J2QojtCHhys7AmztPxUQ6eQLK773nvLcjwaco0Mjug7h8xLpahxD
	BKDnp+iTAetbvzeXRLW70cfgF53smf5DgUOmuPtU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018087828035-6065a5cb-3e51-41cb-84c3-501cf9c2851b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e59233acae3e5f8a27e805b1c378acb535c61202e433304f28d676e31a4da63
Date: Tue, 3 May 2022 01:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651540918
