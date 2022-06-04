Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D080A10F5
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 04:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654316879;
	h=To:Subject:From:Message-Id:Date;
	bh=S60LplJGh4+sFN/ae1E/zCP2g+Kb6+gaN2oU6nV9JAQ=;
	b=C5gwRk2RNBWeaSAqp3SvZjc3PM4mzt6gBAz7+HgbtqTToSrUbrUHZXKohCOI9Xvw
	Zr+dZK71lgm6JgMPRCeRUizwlhHnrLe/c9NXVtCdpZJhwToKNPfR0dNMqlbwz61TlTO
	acrC+cDNk0B/SkCpyPQZS4fwgtKYmZeNg81H2/z4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654316879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S60LplJGh4+sFN/ae1E/zCP2g+Kb6+gaN2oU6nV9JAQ=;
	b=PlrOKOau5cIaab1Jldgyt6k+u/dCT5QKKxHZfj2b+/w0QjuLXebDROiL3SOzdIGb
	dpwdQujKGiIDJBmc1Cjr9ObR7sWOBQ8N/XizNus8oMLgEMy2QGvIwvn5CO3Uc3bBUh3
	kQUsHeDQ3jYaNFGvh9OlNjy+T16zTcSDh/jIpoPQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812cf84d84-4ad54d19-8ba2-4f71-adbf-498396c98796-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 655214bb5a04d1c9990ea837e7a5fe2f4de840e21b013ab5bb4672379fb49974
Date: Sat, 4 Jun 2022 04:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654316879
