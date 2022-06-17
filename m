Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FAC33C7
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 17:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655488499;
	h=To:Subject:From:Message-Id:Date;
	bh=iJKsbg9znFE+f/9hWyELIzcl25JZbVh5YHTQ9lBW7zE=;
	b=XD/WxmYsyCT9g7oi4y/idY8hK+//eKnDd0Xuq45tw9iGUvzeUAqBm206Mg/FQ0wA
	ertHM8etsG0InzPFcRVIS8v79G9jwosqAbUNQchg/GSvkmIdT3kCMgxCQiOdwFcf4lV
	aUPloeQbVz+/0zwBOWyxMWlfTVnxoWbM6j+aGPj4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655488499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iJKsbg9znFE+f/9hWyELIzcl25JZbVh5YHTQ9lBW7zE=;
	b=bbhTcNAf1IyOWLaTW95q8FYyMGRnztYHN6oOP+FL7EFB5ceyAe2uIzWp4shIXskt
	gurxRSoGBgZGK8+4vUe59GUB3gVPrMfjK3dEVvtqQovM2jyF2r0Q3GIES54ZgfAeAyo
	Lzb/Fu1BdU5+MJQ7xpD5cn7qwKXHuLM/EVy2S6do=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018172cdce3b-2bc14ae2-f95a-44f0-92cf-474ae7c48ef4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23c242d4c302bd8f72251beb85098ceddf9dcc1966c88b202bf26f378684526f
Date: Fri, 17 Jun 2022 17:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655488499
