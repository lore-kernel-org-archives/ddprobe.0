Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7602F2A
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 17:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651511698;
	h=To:Subject:From:Message-Id:Date;
	bh=F6iTEO/eyrShy0OAKXOzCWRbbx0CLsY/MKU47+8U340=;
	b=ZXvcaAPObHj1k63LE+gCvKR4kRyD3ZvMoirEi2M4KIaGYCdQrFw9XN0aoR/axO9t
	2GL9dKqfCsA9DgyUbtIykoaLBUQyuOjPz5Uj3qFwfJqVsk6Q2+PCKgNQt56/yiMGjIb
	Fj/wmMomtkYcEf0+SMXzvTsq/GQUcWqMcSbvQkeY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651511698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F6iTEO/eyrShy0OAKXOzCWRbbx0CLsY/MKU47+8U340=;
	b=EANbCqlHxHNUDxY9vLfwgHxQQQ5WrMp6N1vvE/EHmnbOAit7dOXtvtbxKdBpCepe
	jBw1qw4HeH9dA+KteCe9HuXUMseihCsPHHus3mqEpCik65xl/pnZU0BXGr40Du7bs0+
	g6DuWB6Zy544Cj6+1taBVmu7vhOgNngizUpHtYcA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018085c4a349-a3aaed16-9cad-45cf-bf81-f5786c9294aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9fef8afc386c625a5ee162d546d6bb3e6b5f062acf66c94d337f04ed65eede48
Date: Mon, 2 May 2022 17:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651511698
