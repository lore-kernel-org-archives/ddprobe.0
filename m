Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E3537B
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 06:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647756985;
	h=To:Subject:From:Message-Id:Date;
	bh=CUmlB0dhqu4CXhym8vXQNl3Sbjif4sazCf5P45Tn4KA=;
	b=cg++6/NcbiVH8q4Vkqblk2utA1H+JU0ar7yCbosKgGicZnt8IAv3croXUaqltaYT
	WKEo98CVSewBZo7iTR3vW43ae93+eRkVpTRYfnu8Lb8a8VLdLndncldWuoLFwjxzua6
	Wl2pTGUI4WBSZzxn5AuWfXk/oH15+h71QdeLxCxs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647756985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CUmlB0dhqu4CXhym8vXQNl3Sbjif4sazCf5P45Tn4KA=;
	b=iUbezUOlcuvgBwDTs8NZ0Wxhq1VXsFVDDSZUI1sar4gmoUv0zIVpgHtOKxj6kp/C
	tSmO7s9qso5ziLTEs+fJH2/YE8W4NfQ4EkucWRj1Sw1WubPLJTHmi9vYduWkyj6vp9E
	y3B6AaeQroAPxCr7E84VpEVa5ldnzO823RoBwBYw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa5f841f5-f3ecf6f3-4c53-4ddb-895f-06015358cccb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b9179ad562981d6bfeff37cbb9d8fea09ae7d441580db39e5d7eab9a4deb19e
Date: Sun, 20 Mar 2022 06:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647756984
