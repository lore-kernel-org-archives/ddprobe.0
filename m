Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B077E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 17:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648316998;
	h=To:Subject:From:Message-Id:Date;
	bh=bYZkRyed1cKVj/3a05ub29lakFBlWNhyedHEQO2uuD0=;
	b=cArGg28Llcuj/bacxo5r6+y3UYoy33mr4ilK3+iD+9pudIy8pj8A//OF0gnjtNzN
	hZ6N6CPvlc7jlhDBtb6QdcJXMmPDtLJEZFKXw1HcyF9tdJJt4L0QmZuMVlcKu2HRddv
	3zKBrzv642B1IWh2eMhxM+IJcPXmG6eLn6ibT+mg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648316998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bYZkRyed1cKVj/3a05ub29lakFBlWNhyedHEQO2uuD0=;
	b=Uw2hrJFjZyNQiA2SgDZVN0JuugKCVUlfOUSbVWr4K+uXRLY3AmDKrrp0X5gtDLxf
	Tdc0y2+5z5gRYgbfVSVAWCncGrXtF/ni+l7C0y3yU0NVgrYZJkrIza7vaNCrQqeEoth
	AmRd+p7pLloypTfeVGtDo4TO0kq5u1jhA9xpjILc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc75962a7-89726af8-420d-4564-99bf-85658229c00f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8148395e097fd8371a3c9897326d979abf9500b84f8e6c80c433432cea2a98a
Date: Sat, 26 Mar 2022 17:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648316998
