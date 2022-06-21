Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FA07F5
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 02:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655777219;
	h=To:Subject:From:Message-Id:Date;
	bh=o2AKY8FDhLyNHLV6sPGQo7Tl2Q4yXVwF0mi+Q1tW8p8=;
	b=Cw7BkEuIwJlZrgVDQI/3H4qwzp6G96HuzvqrS8T9mGSITA67Q0dyAcBA7oMN4AR9
	fMWhxT0jGIRH23URVZrcg3tgnKCx0MEdoVIXYZjAaNvxVfUSpOw+ySRX0kGMK9GxfDY
	b3nE4QEQXSr/kbOO69pBFx+fkx+oAS11UZoKy0sI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655777219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o2AKY8FDhLyNHLV6sPGQo7Tl2Q4yXVwF0mi+Q1tW8p8=;
	b=CEytExQAmo9XPPDDa4gTTUxQqtzAkGw4+9oKJ+8ddtQ903IFEHHdt7TJkHtu+gqg
	QizIIYyuAzs3y8wQEW8NejwJk10nE1nOBavmqYTDD7CXXi+rGE/zFzoqdCJ18qdxhA/
	B+3Hfd1XuvbYZ2DrgmfQtqCC7wSrRA6RWcywtJsg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181840352c9-4e1aa780-233f-4256-96ef-2b4a0dc02dbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ef4edc02bfd437c5a0571198435cad9219f554ac41a9222f6dbaf9ce2d8310b
Date: Tue, 21 Jun 2022 02:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655777219
