Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C619B5388
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 22:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647641184;
	h=To:Subject:From:Message-Id:Date;
	bh=SwG1brxUUO9qd2xAOl/c/5npRzXp2jP6Ieu/FkF2nWI=;
	b=TnTFPAby8lxGRDpN877CJmEBbfiJWocmUrdmW9yzMZ+5EzYXEgAvJlI6svCdRS6h
	vWTak4TgcSwWxOYwK3jjkJmimQHB+ryUqfh7bedKGEIhnrmiguq+wsVUZISIIZi4vBo
	R9jhAunzpaYbu7Ce8+12ph+y9aTDU/4onaiNLDwY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647641184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SwG1brxUUO9qd2xAOl/c/5npRzXp2jP6Ieu/FkF2nWI=;
	b=I7/8HRUikgO8FKj+shbJxMJaN/oXkN7GObl4MSyQtm2YMLyDQ4BsUN8KeMRnWC3L
	JO3nSVVjidC4/7kxamKBUSZ7KnySdbjo/V9FS8lP3tXPmzXtwEkvUTbdXQMmTm9M0eL
	7uOaqSf8Da3siE7wdetm9L6LYMrJ1ph+aLo/+bTw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f114a0b-1c98be06-5ea1-4502-a64e-92b504e68a0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d143a723115e337e1c2892eb0fe7f36696cdeefc3c6d423f9aa2f57f462e192
Date: Fri, 18 Mar 2022 22:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647641184
