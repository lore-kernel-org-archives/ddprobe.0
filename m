Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88C845122
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 07:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645254985;
	h=To:Subject:From:Message-Id:Date;
	bh=CzbsrmZT+WhGNXOstaf+Qs+QjrTTT1TDnshDGF3twro=;
	b=Htua5cIZe3L6COqODtwLSEq14ad+nfK1tdaNhJA9HHWtULk5YzbMvVhwaoDIgaI+
	7Xg7/TY8wzg8D0Cao80FRTvYHd2k1cwc3iyhOmRAk4Nq2R84892mTqA8MYim/d7KBVy
	Q2rj7kPC0ksWn45JYkyo4DZh81MZQRgNvBQSYUl4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645254985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CzbsrmZT+WhGNXOstaf+Qs+QjrTTT1TDnshDGF3twro=;
	b=jwsciM0O33WhDYE3fpKvPn91VqwKuBcYYVvh1hkpQ3zAQXIsQveCe9kHJJZ6WS2d
	plAggYC5aWG2llGscL+NBmyWQt0UxKLHHP4le9aFMRnrp1NmePfBPBoQZlDdflfCReV
	zgGrUGd+OZP4shgASbqUo93AIEtks3SqX/JdQoys=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f10d6c473-57939d4d-d52c-4fdf-a329-3e76356dbe92-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3ca713a1694bb3614f8f6e2a93cd77485ef303ce379a3c261a18cb508882a3e
Date: Sat, 19 Feb 2022 07:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645254984
