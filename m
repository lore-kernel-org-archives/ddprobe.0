Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D969E7B
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 06:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650177838;
	h=To:Subject:From:Message-Id:Date;
	bh=cxWpQbwivVPdSzjOND5OYOMeibZH1NxcL1hqwBG8Jhw=;
	b=LOfk9auTX6EwdoKa1HAFy1Z58trYoaL6PhX5ZkFLWuU6FJ5HLtsGHaz0vHAJmzVE
	QdBONSMBw38TVVBwhqjYnq+LLv69+OlHiu2DqhsDjZ2IemCPoNIfggA3Wv4PswrG7Rz
	ptkKn+C5R40zcchCW3f52P1RJq+rx4J4vv6Mv2K4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650177838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cxWpQbwivVPdSzjOND5OYOMeibZH1NxcL1hqwBG8Jhw=;
	b=hCTW7eUzXlhiXXeMrKmDR3QQKnBY/EJRfmyiYus6JRdq9sJZUhF4ovqDC6XHqja2
	j0yfuLqCSIF2QDO1nS5Sgj3i9ZY3iUh7CXV1iZ6dS9+fJdGM0ti0LQ0nEpTt7IIY6d3
	F+e805oAO14zLETY8KR5m05JwUTGsHvWAKwa96x0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018036438caf-0427d8b8-c664-4265-8037-f813833f1042-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1070764407571bc65bd16ed32b755aa5450cafabbdfedfa92ee212b6860fa03a
Date: Sun, 17 Apr 2022 06:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650177838
