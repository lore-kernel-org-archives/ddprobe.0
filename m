Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2C222F3A
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647485784;
	h=To:Subject:From:Message-Id:Date;
	bh=0QxGp8Z8KhHmFk7NYNoVU8MMKIBdr63BCsFeiFxQkTE=;
	b=ce7lcyo0yMlhUVmSgaKYTgEM5fqN8rInQGKDh5S2tLIkg8t7aRTFkN5b09pn46Va
	qIfdXL6IA3eBUFc/sg/wtClLthCeVcb8XHA+hUc0Ve8wCd3gIkxzS2dDvsycD8pECO2
	bkwmEkE3SVMQoNGx9byNgyOCmLFyMbphI3+FJzl4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647485784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0QxGp8Z8KhHmFk7NYNoVU8MMKIBdr63BCsFeiFxQkTE=;
	b=d2YC7g3cyMnxLi1svuNGtiTDfiiMBawOif78w0YKNQgngwPpVYlKxvspqNW73yd5
	x6Mw0lgQr3/MmsD4r/Nt5am94uDbNwIAIBC8XuWYMGRlE88edrkltcRQiDnhovJxlB4
	ZwxUd3TwaBRli1mUL37QcwwJ5Z1XPU+X5YFH6Kc8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f95ce12b3-87c35c74-384f-435f-8ccf-8d7c2a9b872c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a5415ff414b8f0145dd09bb107514391efe65966a61299a1816b809c847c4cd
Date: Thu, 17 Mar 2022 02:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647485784
