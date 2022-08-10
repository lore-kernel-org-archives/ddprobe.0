Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3549E2C80
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660142452;
	h=To:Subject:From:Message-Id:Date;
	bh=GhodosvyPQ8a7VmWnHty2JY3dnwOdJAt8LO93mDCd1w=;
	b=XAdpv5lQxe0GDxyxrSLb/XNTLgGTIPfO9VlniOehiTyDG01CSfo/af6cCUJb5Ro7
	jbvdWke0lpu/QEGfcj3hvlE4tVa5U58Rzg6GbhPrVlELBORLEOrDt6Cf0jWGubU3HuJ
	OTPalMA/L5GIDzZ0yq4fWxhgw62aP9Xm0BfcbT1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660142452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GhodosvyPQ8a7VmWnHty2JY3dnwOdJAt8LO93mDCd1w=;
	b=PDqQjZPO5rKnKLjSCuXMSfAwHLDRPq2+EMDTKL2LmsmNxuHnaOcf2bONHYtM0Y4I
	3bYkv++emvMhJ3AfO/YQq5A11fzyFBHdLfxW9eBqjh9T9h5mLL0UqH2/tbf+pccwvKC
	gAkxR8bDiK9ca2SOZzP1lrBtT1W4Ld0BQy1808ek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018288337f64-75db411a-8aab-494d-9b97-7c63b771a53f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0fe3e63cf1d81e3dcbb4a01025bbb5af93a675287455c52a6d5f14f2046de7ab
Date: Wed, 10 Aug 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660142452
