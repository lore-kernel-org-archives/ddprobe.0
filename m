Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F33EED8
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658927452;
	h=To:Subject:From:Message-Id:Date;
	bh=lpFBt6N/2tATSueS1RiEx97MnSoOF+BHBXY8Z50soNQ=;
	b=dARJo31M7uZ3ZWBtu6IoE8rzhphqY+wcSKQLdP9BKVybKeQJTM3PNZANBmhBaaVd
	4GVwMd1Qgb/Q73OqYYg7CyHEQqyrNf8lKZCq4MkztbkVUef4afMuUpxDMBAMsx8PACC
	KCy3QMZpkPOsy6/8ahzRft9orxfyUeQDLueUso7s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658927452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lpFBt6N/2tATSueS1RiEx97MnSoOF+BHBXY8Z50soNQ=;
	b=gujL3aSJGItP6juVkVbrrrXi8OsAPDbY+wcsRJutwQ7NEHx5HCdefzFJFFUQVct9
	VJr6m83/jOOeHGAg9Zc6N9iV/x5fx6MlJmOyWqwjyNLRwZL5firRz/Wcm7ev4f0Xm4n
	iC2/OQBLpq8HrffelKq1+O+gYq5+t94S4IKhcoR8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823fc81195-a656759d-e2e6-4da5-a075-731f28c08791-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa789deef881a3f914140781327e7f7b5975445adc365c82af642c541d0c48cc
Date: Wed, 27 Jul 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658927452
