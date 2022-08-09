Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4670815A7
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660051252;
	h=To:Subject:From:Message-Id:Date;
	bh=JvoQ+qleShnMlEGs2UHqrlD9Xu5h/j2JiSOlgsHSrN4=;
	b=YHQUk2Xrlg12pKQNJTzsTqebo4EgGn2+inYwQQvrXPro6Bj6MP3DW90fAOzoXQqP
	IljEoOEa1nnS8kU+V9VigcuTr9aUlnQAVnZC4DbM15QNeLIzIhKojXxsJ9B6xTiqqD+
	ovVuhX6O7em9G80BKgdCPv1NpLKkgLK19w2cl6ws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660051252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JvoQ+qleShnMlEGs2UHqrlD9Xu5h/j2JiSOlgsHSrN4=;
	b=TjVmDO/24f8CtHbOGG6B5GFdNRjtKXwwyw7DjDjP/r3BlVilPl6rlhCUivVb7J8S
	AQWZogZnmBMtU3g7SrQwbD18V9CPWaA+A+CGt/oAF907nPM2mhC7Hn5oU4vAK88C70j
	he+DighVRpvFTUJAjXK9+18IN9yhb/3d0/z+0Fko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018282c3e555-5cd0aba7-6b2a-48b2-a600-6961e9916b96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c8cefc61b1ecda8962296c3de7e77c3ae2794c7c8b011575f64cee594a00bbe
Date: Tue, 9 Aug 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660051252
