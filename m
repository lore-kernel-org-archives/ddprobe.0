Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF417C
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 12:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650891178;
	h=To:Subject:From:Message-Id:Date;
	bh=aDmB8LnFxBdYTqS0T3aS9MYkw2iJ+Q7iizdRKtY597E=;
	b=E5ziJFQmYTrY9+RGBU3SqQxp0fEewP/N0h2KjdxVp4rD/zqiwYZozDj7iXyRaslA
	ToYDMLZBH7Hn5QPCG2Dh2em23SYjA7V3n7bV4A6t2bq5qTce79BoofrukZ4hZVyiH5q
	IzFZ27RuA6aBB4JfYICVQDp+uiZSaq3I986JTEvk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650891178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aDmB8LnFxBdYTqS0T3aS9MYkw2iJ+Q7iizdRKtY597E=;
	b=aGjkDEOoz5nYAwtVOOdCcavDpz7FnpLyOC4buCYyuhHOlNTukUiqzCBPdW8oG9XP
	qhEWFsT+XnKj7YNZD1NqWRM5dsyVz4NXgrGe00VLtHE5grFSFIfoP0qM4LFa3f1ajgA
	0mEyxXK2UB7l/RxoES9gh0JiWFo/78zNkF6wT/m8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018060c8418c-a35216b2-413f-4478-a418-355546890ba0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f7e8d899cb2e43904925cfebadba31480757a9ff2802c5a78326322bab95353
Date: Mon, 25 Apr 2022 12:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650891178
