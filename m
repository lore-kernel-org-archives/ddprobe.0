Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166847E
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 00:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649204458;
	h=To:Subject:From:Message-Id:Date;
	bh=uu6KAyl8j63d6tGL6ylS5jWefgEqEr5pJEZq+CbQcxI=;
	b=kdVtq0L50T7UUSlMJJDr2M2pAPVjh0uMZS7KqCM+LipDBEZoPmPL0cTc2uxiNx8K
	V857WhgGxYlRrFFKWX1B9FrmqnBc+efsC8/TUKQlf/II8xAHq6bftrRFFZsRzcb7xJY
	P9Ld2PDXXXlXMP3tdyEhRVu0IFx1Q7Hlcgfb3r1Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649204458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uu6KAyl8j63d6tGL6ylS5jWefgEqEr5pJEZq+CbQcxI=;
	b=Lyl24yjrfJPVRUtyzWnjryKU5bGAcm4mYFYKixP+Fr1O8h1LsxN4ne6t84UkJw94
	j2aDKKUNqUTs9klCo0uEHHX0pHwjdyzvnddVHX2mjlYKnA3wbPPgc1CDJA75JRZu6TI
	/it6e0aZjutuJKS37wjXm/Hqvzu8HKUdoWpoqZrI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffc3ef31f-0aec8459-d99c-49b2-92b1-d4bd4fec1df4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88bba453911dd33ecf5cc3ba0560a8bdd8fda41584440d07de4667049e854a70
Date: Wed, 6 Apr 2022 00:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649204458
