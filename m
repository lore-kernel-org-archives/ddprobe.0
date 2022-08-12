Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1AC366
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660271452;
	h=To:Subject:From:Message-Id:Date;
	bh=wsbRqdXv5Ni0+x6im9w7gKW1VicxPKqWOdJFN6zUuEE=;
	b=GuSmpZEaeh/CVlqDoEi4lTGQhOBRTItBSrepkQkzpfrR6A2vp/848X/Td0gJMphB
	CfbrJn+vbv0BuOpmYsf6mGD7HSHAHAuAmtmBGa99yat9UAcSp2hY9AR4IaGda2/6ph5
	AFJvjklXxLUUpit4kA/Sfwx7KBscq92alRqsVzzw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660271452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wsbRqdXv5Ni0+x6im9w7gKW1VicxPKqWOdJFN6zUuEE=;
	b=c7n7MGZncJuy0p/D6Ppt6K3FOz26vWH5PJd8jaIIzaVi5UnDZuAyaT3MkxKkT0wL
	yztglOlNIqArfeB7Aj9wSg+YvfNgSrzWfTiJjlctpufLwobu2X0SvoG9JzTUjyXe64M
	lcFR4w05kx9FTf8rio5Ip+ioniqC2m+BWjbhw8gY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828fe3e1c1-07c703ca-671c-42a4-ae39-1391f60799a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d5ad840e890545da813fad9855db6d6cf058164cba2b0dd4d64a12f5c4f405a
Date: Fri, 12 Aug 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660271452
