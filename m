Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D9D7EC
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 09:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650273118;
	h=To:Subject:From:Message-Id:Date;
	bh=iCkWIMjWQKSVGMfN4O5PYbHtOPAmyg4wYe9m4c/Lt/M=;
	b=JWC9LlBQlxoaKX/1ZODHst/qBq+0Q7K2aBf2AsKSxUmkDsuuJZ1R3JLELFXBi35m
	Ep0wC43WCfQhlGvIX/lYWl5QB7pO6vi8guAOEqUlOk5rePME2SGQB3F1aKhlkxQSAy2
	UZ8sQbCydBkQeLws4AgVAIU+MBme6YKBY84M7V14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650273118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iCkWIMjWQKSVGMfN4O5PYbHtOPAmyg4wYe9m4c/Lt/M=;
	b=JMlJ0Bqox1Jnk8wiHFonCoT+aDesQuYExwKu+bm9DT8T7UOeX1NcRn/BzM1usSNd
	X5kdDUD5Q9zzOTpW1EYsh8tYgs5qFfXfagdTDwB4PDQyK2qnDfQAjx7NZzFs7M6EStg
	4mxS2x+AvL3IGkJaEJrLPRcpYwdzW2VjG5RUTDH8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803bf16829-fd31da05-97c4-44ef-a62c-2defca8f64ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8ef791a4460dfde78c9afa5d832e329815949318525115ccde7e7f3689c4b9d
Date: Mon, 18 Apr 2022 09:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650273118
