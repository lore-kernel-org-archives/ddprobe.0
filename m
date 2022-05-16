Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6903B7A
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 07:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652685059;
	h=To:Subject:From:Message-Id:Date;
	bh=wboEBlAYGHT/mN8Va4yNvD9mCPx+SN2j0mSzUVDoL/k=;
	b=BhD0bwsUt5HwROCshCKBL/XGD6imsbnyplANvKbEmjhQYECFpaHMeurgDw/i9dxu
	LZyQewaDXkj/qzSNSeLx28RS9kaYfMMow8BYD8g5Yb8hef4eWMiq20fIyty/WgNpnfN
	SOW8It54TariP+ix5whzAYdyPxZdqiY4+MP6dka0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652685059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wboEBlAYGHT/mN8Va4yNvD9mCPx+SN2j0mSzUVDoL/k=;
	b=ULE/zLgHnlcb1glbBdLsEBnE/2y92S8gdriATmsLhRKxs52fcmUFUjhzaL2SAJoC
	dYgySGt2DaRh4APcNzoWVioij10RG+ZppRnzp59Bq3ljlWFoJoT8L8uX6J54TnBLacW
	PSvjiU4GINPXzj+u6zXomOTzN9j0jhqv4IpCo20c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cbb4b4b7-d250ef42-a0bb-4e0b-a0dc-257b829e4530-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38cf1bb903585def9d24362f5cbca7443a54b037fcfa9d85cce982ca6e4789dc
Date: Mon, 16 May 2022 07:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652685059
