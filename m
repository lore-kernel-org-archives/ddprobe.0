Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66FC8EB8
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660471252;
	h=To:Subject:From:Message-Id:Date;
	bh=Djl/jJ/7FT0IB4qIT9/so+ocVUVbhOLTUHIJd1wC7k8=;
	b=lScyFUOnD7C7K1+06wrnY4qXvMrNxzfwGlGccVzYHROERTbfPT4j/uYKw72LgotR
	xTqkIYekO+WYRTNtgD5jWULi+AsoINHKtV1Co16Gj7KRazNNhXwb723fu2uFmolii30
	PDzFJk7n5y38ULjb9qAsqyxbjIi3WqiyORDVLpac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660471252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Djl/jJ/7FT0IB4qIT9/so+ocVUVbhOLTUHIJd1wC7k8=;
	b=bwWzNzpyW2gHxlw32eJsrhtpgFLzpN8HMsdBZ3XsVbJWUblVGZA3EJztRZvkLJY1
	CikPOzIIIaih9VkCTCTp3ejLZidcpcNlO1I+g0tlP25tzzbDEVzgqSgt92DOOEzb9hV
	T7ax5snbYE/CCG+gttrTkRLSWqe1EnNhju/MOH80=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829bcc9650-528a6fe6-00d7-498d-b00d-dff81f82d320-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb4d8ba8b6041361b3051b9691f0a3fb735b96643d0b477193ef2f9f9ee9ea81
Date: Sun, 14 Aug 2022 10:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660471252
