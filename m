Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432682102
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 16:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647016285;
	h=To:Subject:From:Message-Id:Date;
	bh=pGEr9QSqAeQv5Tm+dDDikGGXuP+ZVFD2RAp2n8VhC9A=;
	b=VnsctPvMdVFwp3C1KtLkhD1eSzziPIEVBNLAb7tYXNd24kVHqsSWfY6nPBJH8B0x
	b74fkp3gY2g1Zshla42LHCwss13akmnwAIdv9jeixsWjyE2+9ZNOMObjcnr3ftGVGmc
	htPEo0B5UPFXyvkqWEVw89VcBN8EjQslG5YK7Z9Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647016285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pGEr9QSqAeQv5Tm+dDDikGGXuP+ZVFD2RAp2n8VhC9A=;
	b=YVB38FFcuj2BHAmwJHoI407VXhMDzbqQra0QsAT10vwXrYy3e5hBK4VpN+7/Fyi2
	FEbqKExK8ZjNbSmr9XQk7TTjE1zBZCD80+1cRlqe04JfXTjLnS3JfKYN2BpUpJ4n4nR
	/xbvVOrwRSThV5zemqjCfHNOIxlzMyFBNpe3HBMw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79d21275-e464345a-b6c9-4df4-84a4-9ccce5bd7dc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42454cad82a2baf6911bd5887deec74d0d47832f349bed3e12bb41277870f0bf
Date: Fri, 11 Mar 2022 16:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647016284
