Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66BC7A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 19:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645988485;
	h=To:Subject:From:Message-Id:Date;
	bh=lNkDwBdzAnWQdyly9jMEXx7Nc1Fa91n0dGweQU4ui9E=;
	b=gHE0q3wMc7K8hK/+yiitesP9pV3m0BMgEy4KUA9wGwpJafsWWJP46mbMDN2oX1a7
	yXqERF9BIydTkEeZiDZQtSBpz4ZCTI+RiV4c+TOWEsTt0q0Rh1qnD7psviQCtyxUnj9
	kF51TlkorIdiJ3iXeAYsEdE+Iy7scemZzt1BxtWY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645988485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lNkDwBdzAnWQdyly9jMEXx7Nc1Fa91n0dGweQU4ui9E=;
	b=Ru02gYWuL8UrcMZoy/Nu4u+5yRXlPWtccWFryeGNkpdLo+AUDEfGI9cQBTK6m8hA
	/5vo/VDP0qbW0vuPr+f35e4zJg0Ur7P4NhKllmWwpdzwVNKjaXsIdxPeakvU3d2DhWW
	j73NNeUAjxYw30IRoMY/wXuEzhwPPFdWfrxPLYTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c8f1719-de383e18-7f10-4af4-a60d-221c3eda7295-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da976738ca357980f9955dfe6a5f5c54171991aa8e4955694894c98d9cddb08f
Date: Sun, 27 Feb 2022 19:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645988484
