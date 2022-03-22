Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D244C6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 14:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647960985;
	h=To:Subject:From:Message-Id:Date;
	bh=5Chi445PuCl3akSLgb8ujp9xqNVjkTzHM5ySS9+mrRc=;
	b=MAe4NwhYIDV4MyBuEj4g/7OPEEOdLllgu5vpWAaePq5DYxqg4fL9exN+k+AWAcqg
	vYyNHvPwgEVp57ZoSyFjazu1ej//onONWY/1Kv2KF3rcmrwhq5hdwCznYChBYAdySbI
	f4zMdhi/fXWi8tCH8nEGUFCiEqr5ux+EN8z+09Is=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647960985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5Chi445PuCl3akSLgb8ujp9xqNVjkTzHM5ySS9+mrRc=;
	b=WOCUXPBuagkgK/RXtvv77F9nwDVr+u81vgx8xZOs/MALvUcWQfW3jIDDyx2K6sII
	SH/IPh9g7mR+b8KzvAM8Uw+Z/ztrvu8kKa66TrKWMFbcY3tDbQLrqso16ZNs5wP+fQ+
	K2I8uV6SoRGVEkvUxxE836hd3WM2bwxX7SdGdCDo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb2210d26-253a642d-1359-45dd-a2b2-75b8d3bb044c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a70125cf90360df0cce2fcdc367d49d6d56e68a79586131886b8bd148c96d79
Date: Tue, 22 Mar 2022 14:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647960984
