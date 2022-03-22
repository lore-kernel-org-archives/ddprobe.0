Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C71C6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647966085;
	h=To:Subject:From:Message-Id:Date;
	bh=Eq+qGZKdA45E9eqCnaRp4FNIF8smp0BcYIZBf4Iu3w8=;
	b=hm4LiiN6f9W+w7h1fenrOY8OT7mcGKaBLX7V4Fz7h5kfvAXAa5xjFHO6WW19zZLc
	zDLmBVFbycjjEgXlPzCx7dXsU8f6G0SXh76uz4fgAfBeI/kcx7FnR8y1CJ4NcfS2tS1
	BwcTPwl53LqofGfbbyQG8QpvGeXOwW9+gAE5uNhU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647966085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Eq+qGZKdA45E9eqCnaRp4FNIF8smp0BcYIZBf4Iu3w8=;
	b=g4C0GzDkmYIst713p2OuuenMxX6wfMzpqd8RjXENgv7C4Cq3rcj7X9ieHNFGny5l
	4zDn/wdd3vRvuE9i6804YT13+H/jGmr98998RV4ztyKhwvGfyxUCzvJqtAdVrYHG8FB
	VlBBVNhF+4+LoaXE2Nlge8Mmo7HQBEJpROf/AjJg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb26ede9d-9af6a586-3d01-4daf-b35c-a54eb5dd682c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e71d3c78156f2dd1d9416289b6f934198481d048629c39b078858d097ccee0e8
Date: Tue, 22 Mar 2022 16:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647966084
