Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FFC7E
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 11:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646478984;
	h=To:Subject:From:Message-Id:Date;
	bh=ZY6e1HqzeK1bITATV5nkDiO7SXGSBjhtYXXe5C+W2TQ=;
	b=mufN3bK4vEicJTKqX49VxSqgkIr4z263hhMOIPxbP61X64EOhiFAKxmEW8n89Gji
	jLya5evKYWDoDc06AF6Bd8snk6C2uFuD0dHYBlk7PsCbI7U7LNTzhsG4JyuvMSAKwvY
	YLvW2vxX7rrsYFNaFCp519bvRdOhIYLbjGyXQvdE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646478984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZY6e1HqzeK1bITATV5nkDiO7SXGSBjhtYXXe5C+W2TQ=;
	b=P7eCU1XdUNsXL8GEyvrGsOq81UCudatQuHSsjhqm7SzewwZQfxHBkfK0wCuN/Xj2
	U8gJhGR+4hN9ODxu4f7utQJ/4MQMzlepMWZeSzV7hl5sUM9YL8qtkiLLd45G8p+Leun
	OBu8AAXtqAa4Om3XhBE8k8SpmFn2eMFYrJ8DjQ+0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f59cb862a-a2590a5f-f9dc-441c-8b38-8f8899614616-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bb588c29b93d9661c826708b392ecfff932edf1136c6cb4a6c7241d743d5bf9
Date: Sat, 5 Mar 2022 11:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646478984
