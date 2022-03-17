Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648CE7A
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 06:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647500184;
	h=To:Subject:From:Message-Id:Date;
	bh=q4tgHG+1f9QiezYH3TjUn2nctrhSlZk5VIpSMnrl/1k=;
	b=ASIc5YSHQE1N7bT6+/51RPDTXljOl9clSKwPtkk9Q4rqec1iGXsph5ZmQ/voSHhx
	n6jx3xEG3RqDwJ/SKOEmRL9d52lUyGdTpw16sE2hwN8b2jHoNUR3/cc9TnGgFG+QdOt
	UvyOcmYyIN5Gr4uiLcMGAsXkEwHgitB0HSiBJis4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647500184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q4tgHG+1f9QiezYH3TjUn2nctrhSlZk5VIpSMnrl/1k=;
	b=hYVsSzHA8baQ6CeBhhuz1c8tf/yeXjiiB5wc2ErY9wAF8fCUK0NdhUEZJFzuUJsK
	Pqc4V1jHIYElDFDhgW4dPWhKcQhs8WJPbbSpe+maXrpwhbJKJjfI9sHmoPTZYjqE/mC
	jUg4gGrs6mllq6hVt41R4q/TvaecfE9gH6UTyIKQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f96a9cc93-8891a213-ee6a-4067-ab2a-fd886087a27a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e7dfab706151f63c720abaf1a30aba92a5e7195965fbfe8475ecef0b7b2a191
Date: Thu, 17 Mar 2022 06:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647500184
