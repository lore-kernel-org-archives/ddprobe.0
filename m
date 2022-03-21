Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 928957B
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 02:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647829585;
	h=To:Subject:From:Message-Id:Date;
	bh=QE6UL7MCSyYpcTce9HzaV4P3OR7A0Z4A66UtVcYFzwk=;
	b=FkCD0JcTS/CM/Oo35IKU62ABCgAtLODRoLBfU1iuM8ZiSoMvwfEowr8Vm6aHxKUI
	FJ+MOzKtbXen0/ioOa6qPvfZpJnXi9isal4U76Okfu8p7xggq1ulytl337X0RPHZ04D
	sdOYORM56oXqeuRSOUiFM0bNkxtt2Mqr5MQFs8DY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647829585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QE6UL7MCSyYpcTce9HzaV4P3OR7A0Z4A66UtVcYFzwk=;
	b=IweEu4lwSvq/IQteDuAmgc6OOOAzVVOedVvMDPZlB47TXSJ44A54U//jXdM/DPtN
	o8wJftIdBAOee1QAW+ma9GhZ7q/E0wHj1+iEPbtB9DQe7Kr//+0ICoHHDGT6/0X7hlo
	BmWtYFzXHCzsSuBsK2cydiE/uvAEsL1/XbymPMnw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa4c0b84-63638009-0546-42e6-85e3-2130c3800811-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ea887a8d05444f94acced9200481dcb73c2408effb0c31401af31851152fbad
Date: Mon, 21 Mar 2022 02:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647829584
