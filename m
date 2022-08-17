Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B142F2E
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660749053;
	h=To:Subject:From:Message-Id:Date;
	bh=/3XYEUj/uQrXINg34k715uW9KqVevUmC/460uWutn3I=;
	b=dlEvqRlQ3UQGdcH42isrbdi9+vFWZIItAfiiaP4LCrqCW8hTf/TK/IveZL4n/jjJ
	teJL9fbS+Z0hGj1XOg3a0kNgDAmv24YZOQ/zfLRRm7YIaKX8jcyVytBZ4+cyeKUHq7j
	3tCJ4/weok7GdfJgW6v58BG4OP93H68jJ9ynbxAk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660749053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/3XYEUj/uQrXINg34k715uW9KqVevUmC/460uWutn3I=;
	b=HxfVFz4hJaBqeyOclEOs+sGRyDxdvnuk+3HbkMIZj/EQQ1hcHLEePxEpjsq9N5+/
	YPajD9hww23NFrPWSRFyrWOtC8+isF66fe1udVacfiucL2NwR+ybSnmYOxxiz41SRZN
	VyYnRgnzqNq0TtYH/L1Jh2dAkZwBmaJOmKwCa4WY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ac5b7a98-8f44e79e-6195-4764-bf16-c1f7e7a5dacc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a09de1245def1342e272da1762448a8625181203eeb66ac14c646434cf96412
Date: Wed, 17 Aug 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660749052
