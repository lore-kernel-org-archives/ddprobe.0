Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C4AA361
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647208584;
	h=To:Subject:From:Message-Id:Date;
	bh=kpLa6Aq7O4JHJrmd66EJ09UjRnqA2VfyEJhvNx5+GGc=;
	b=V0B4ZzsL+Wpda6jpHYXeL7fxgywkZdMje8355HP7uALAR7ato6HvNTeveKQBQzyK
	TbHuwXaUau0nRpNK2mjWvECIUvUzROlRdpclmld8v8LA0OYi+Ge1CjopWgR5YXeXpeG
	cHu1O3gW2y023AeCZJZiauVz8Cki/nL+WTBHN5go=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647208584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kpLa6Aq7O4JHJrmd66EJ09UjRnqA2VfyEJhvNx5+GGc=;
	b=Md+4sfxjrZXucBVBz/8TD2bM0et2yJbTT4Y++haY5iwMj+gGLvUiulUfyRg3fjGz
	n+yzNH46jXQLXCy4G16vfOAlcBbAWOlEftiqdq6OZep/ULtIkfHteJ4vW5SD8Qqs9th
	kukEPcaAws2kyWPL8AWFsFf9YtrpeQf8dnNsHFb0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f85485624-c499f7f2-c643-4070-b07b-53560873dccc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19b01a3f65734a1f14cc5d7448bdfe4dbe95f8c752483afd6006d5a27008e529
Date: Sun, 13 Mar 2022 21:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647208584
