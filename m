Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4D0468F
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 03:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653622199;
	h=To:Subject:From:Message-Id:Date;
	bh=iQdd31Rfc+Dk28EupguTbaQ0TZhPm3BrTRFMPwTtGwI=;
	b=aJVBrj3NlgsKuE60PoBdS6BZ5PbsP+GkN1cL2oK+5trCp3MmOYb3Y+30kPWYBsRx
	5cnV37HlKQJswmi5OUYDHu+EcMsbfPP5VBx3u4nRZitAtuImOkqwkD8dNCcO+tBRO1Q
	yLp+g8AWqfFC36rKnPqKdLTSHChe316NhyLwhl5k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653622199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iQdd31Rfc+Dk28EupguTbaQ0TZhPm3BrTRFMPwTtGwI=;
	b=ctU7GakZHKKGUYqfmqWuNkb/1u3UT/nK3e0U1gVgP6GlJ8kSLuSKrtRUIo/UDUj8
	Oidcy2GueIosvJKdloo70DWV2q6/Qv1Zrb6bSpGDAKdY0og7vrrDWIPDf9ZVWSRyY+a
	k6n/+dbW+cO/UkgB7J9yv/GB/qFntAAnbafXX9iw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018103905419-02c4fc61-d6c3-4175-bcaa-cdec01e77e88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 061954bcea96d647bd356d12b257592d68b5df31261c390ddbf9900aa51ac0ee
Date: Fri, 27 May 2022 03:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653622199
